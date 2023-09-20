(declare-fun nu1_ack!186 () (_ BitVec 64))
(declare-fun nu2_ack!187 () (_ BitVec 64))
(declare-fun x_ack!188 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!187)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!186)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!188)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!187)
               ((_ to_fp 11 53) nu1_ack!186))))
(assert (FPCHECK_FDIV_INVALID
  x_ack!188
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!187)
                  ((_ to_fp 11 53) nu1_ack!186))
          ((_ to_fp 11 53) x_ack!188))))

(check-sat)
(exit)
