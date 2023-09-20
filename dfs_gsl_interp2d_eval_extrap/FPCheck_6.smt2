(declare-fun x1_ack!57 () (_ BitVec 64))
(declare-fun x0_ack!61 () (_ BitVec 64))
(declare-fun y0_ack!58 () (_ BitVec 64))
(declare-fun x_ack!59 () (_ BitVec 64))
(declare-fun y_ack!60 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!61) ((_ to_fp 11 53) x1_ack!57))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!58) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!59) ((_ to_fp 11 53) x0_ack!61))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!59) ((_ to_fp 11 53) x1_ack!57))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!60) ((_ to_fp 11 53) y0_ack!58))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!60) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!57)
                       ((_ to_fp 11 53) x0_ack!61))
               ((_ to_fp 11 53) x0_ack!61))
       ((_ to_fp 11 53) x1_ack!57)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!57)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!57)
                       ((_ to_fp 11 53) x0_ack!61)))
       ((_ to_fp 11 53) x0_ack!61)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!58))
               ((_ to_fp 11 53) y0_ack!58))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!58)))
       ((_ to_fp 11 53) y0_ack!58)))
(assert (FPCHECK_FSUB_OVERFLOW x_ack!59 x0_ack!61))

(check-sat)
(exit)
