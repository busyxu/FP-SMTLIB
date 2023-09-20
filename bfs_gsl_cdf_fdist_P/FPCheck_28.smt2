(declare-fun nu1_ack!177 () (_ BitVec 64))
(declare-fun nu2_ack!178 () (_ BitVec 64))
(declare-fun x_ack!179 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!178)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!177)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!179)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!178)
               ((_ to_fp 11 53) nu1_ack!177))))
(assert (FPCHECK_FDIV_UNDERFLOW
  x_ack!179
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!178)
                  ((_ to_fp 11 53) nu1_ack!177))
          ((_ to_fp 11 53) x_ack!179))))

(check-sat)
(exit)
