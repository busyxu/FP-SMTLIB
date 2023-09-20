(declare-fun nu1_ack!171 () (_ BitVec 64))
(declare-fun nu2_ack!172 () (_ BitVec 64))
(declare-fun x_ack!173 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!172)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!171)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!173)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!172)
               ((_ to_fp 11 53) nu1_ack!171))))
(assert (FPCHECK_FDIV_OVERFLOW
  x_ack!173
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!172)
                  ((_ to_fp 11 53) nu1_ack!171))
          ((_ to_fp 11 53) x_ack!173))))

(check-sat)
(exit)
