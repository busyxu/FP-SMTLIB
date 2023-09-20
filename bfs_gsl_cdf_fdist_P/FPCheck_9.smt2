(declare-fun nu1_ack!51 () (_ BitVec 64))
(declare-fun nu2_ack!52 () (_ BitVec 64))
(declare-fun x_ack!53 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!52)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!51)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!53)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!52)
                    ((_ to_fp 11 53) nu1_ack!51)))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!52)
          ((_ to_fp 11 53) nu1_ack!51))
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!52)
                  ((_ to_fp 11 53) nu1_ack!51))
          ((_ to_fp 11 53) x_ack!53))))

(check-sat)
(exit)
