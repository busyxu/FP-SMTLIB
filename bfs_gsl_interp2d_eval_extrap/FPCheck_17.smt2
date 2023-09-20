(declare-fun x1_ack!168 () (_ BitVec 64))
(declare-fun x0_ack!172 () (_ BitVec 64))
(declare-fun y0_ack!169 () (_ BitVec 64))
(declare-fun x_ack!170 () (_ BitVec 64))
(declare-fun y_ack!171 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!172) ((_ to_fp 11 53) x1_ack!168))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!169) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!170) ((_ to_fp 11 53) x0_ack!172))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!170) ((_ to_fp 11 53) x1_ack!168))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!171) ((_ to_fp 11 53) y0_ack!169))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!171) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!168)
                       ((_ to_fp 11 53) x0_ack!172))
               ((_ to_fp 11 53) x0_ack!172))
       ((_ to_fp 11 53) x1_ack!168)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!168)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!168)
                       ((_ to_fp 11 53) x0_ack!172)))
       ((_ to_fp 11 53) x0_ack!172)))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 y0_ack!169))

(check-sat)
(exit)
