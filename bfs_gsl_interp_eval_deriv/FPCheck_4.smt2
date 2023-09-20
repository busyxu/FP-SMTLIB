(declare-fun x1_ack!29 () (_ BitVec 64))
(declare-fun x0_ack!31 () (_ BitVec 64))
(declare-fun x2_ack!30 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!31) ((_ to_fp 11 53) x1_ack!29)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!29) ((_ to_fp 11 53) x2_ack!30)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!29)
                       ((_ to_fp 11 53) x0_ack!31))
               ((_ to_fp 11 53) x0_ack!31))
       ((_ to_fp 11 53) x1_ack!29)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!29)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!29)
                       ((_ to_fp 11 53) x0_ack!31)))
       ((_ to_fp 11 53) x0_ack!31)))
(assert (FPCHECK_FSUB_UNDERFLOW x2_ack!30 x1_ack!29))

(check-sat)
(exit)
