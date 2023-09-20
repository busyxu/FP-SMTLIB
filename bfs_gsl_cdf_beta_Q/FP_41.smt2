(declare-fun x_ack!452 () (_ BitVec 64))
(declare-fun nu1_ack!450 () (_ BitVec 64))
(declare-fun nu2_ack!451 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!452) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!452) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!452) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!452) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!450) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!451) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!450) ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!452)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!451)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!450)
                       ((_ to_fp 11 53) nu2_ack!451)))))

(check-sat)
(exit)
