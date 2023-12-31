(declare-fun nu1_ack!99 () (_ BitVec 64))
(declare-fun nu2_ack!100 () (_ BitVec 64))
(declare-fun x_ack!101 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!100)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!99)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!101)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!100)
                    ((_ to_fp 11 53) nu1_ack!99)))))
(assert (FPCHECK_FDIV_UNDERFLOW nu1_ack!99 #x4000000000000000))

(check-sat)
(exit)
