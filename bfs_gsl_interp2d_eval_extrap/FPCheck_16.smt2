(declare-fun x1_ack!163 () (_ BitVec 64))
(declare-fun x0_ack!167 () (_ BitVec 64))
(declare-fun y0_ack!164 () (_ BitVec 64))
(declare-fun x_ack!165 () (_ BitVec 64))
(declare-fun y_ack!166 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!167) ((_ to_fp 11 53) x1_ack!163))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!164) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!165) ((_ to_fp 11 53) x0_ack!167))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!165) ((_ to_fp 11 53) x1_ack!163))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!166) ((_ to_fp 11 53) y0_ack!164))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!166) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!163)
                       ((_ to_fp 11 53) x0_ack!167))
               ((_ to_fp 11 53) x0_ack!167))
       ((_ to_fp 11 53) x1_ack!163)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!163)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!163)
                       ((_ to_fp 11 53) x0_ack!167)))
       ((_ to_fp 11 53) x0_ack!167)))
(assert (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 y0_ack!164))

(check-sat)
(exit)
