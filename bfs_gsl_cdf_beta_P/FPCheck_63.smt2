(declare-fun x_ack!305 () (_ BitVec 64))
(declare-fun nu1_ack!303 () (_ BitVec 64))
(declare-fun nu2_ack!304 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!305) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!305) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!305) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!305) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!303) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!304) ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.gt ((_ to_fp 11 53) x_ack!305)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!303)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!303)
                       ((_ to_fp 11 53) nu2_ack!304)))))
(assert (FPCHECK_FSUB_OVERFLOW nu2_ack!304 #x3ff0000000000000))

(check-sat)
(exit)
