(declare-fun x_ack!599 () (_ BitVec 64))
(declare-fun nu1_ack!597 () (_ BitVec 64))
(declare-fun nu2_ack!598 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!599) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!599) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!599) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!599) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!597) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!598) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!597) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!598) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!597) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!598) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!597) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!598) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!597) ((_ to_fp 11 53) nu2_ack!598))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!597) ((_ to_fp 11 53) nu2_ack!598))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!598)
                    ((_ to_fp 11 53) nu2_ack!598))
            ((_ to_fp 11 53) #x3fc999999999999a))))

(check-sat)
(exit)
