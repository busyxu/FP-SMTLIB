(declare-fun x1_ack!77 () (_ BitVec 64))
(declare-fun x0_ack!81 () (_ BitVec 64))
(declare-fun y0_ack!78 () (_ BitVec 64))
(declare-fun x_ack!79 () (_ BitVec 64))
(declare-fun y_ack!80 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!81) ((_ to_fp 11 53) x1_ack!77))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!78) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!79) ((_ to_fp 11 53) x0_ack!81))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!79) ((_ to_fp 11 53) x1_ack!77))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!80) ((_ to_fp 11 53) y0_ack!78))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!80) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!77)
                       ((_ to_fp 11 53) x0_ack!81))
               ((_ to_fp 11 53) x0_ack!81))
       ((_ to_fp 11 53) x1_ack!77)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!77)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!77)
                       ((_ to_fp 11 53) x0_ack!81)))
       ((_ to_fp 11 53) x0_ack!81)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!78))
               ((_ to_fp 11 53) y0_ack!78))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!78)))
       ((_ to_fp 11 53) y0_ack!78)))
(assert (FPCHECK_FSUB_ACCURACY x_ack!79 x0_ack!81))

(check-sat)
(exit)
