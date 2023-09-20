(declare-fun nu1_ack!81 () (_ BitVec 64))
(declare-fun nu2_ack!82 () (_ BitVec 64))
(declare-fun x_ack!83 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!82)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!81)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!83)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!82)
               ((_ to_fp 11 53) nu1_ack!81))))
(assert (FPCHECK_FDIV_ZERO
  x_ack!83
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!82)
                  ((_ to_fp 11 53) nu1_ack!81))
          ((_ to_fp 11 53) x_ack!83))))

(check-sat)
(exit)
