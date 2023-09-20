(declare-fun t_ack!129 () (_ BitVec 64))
(declare-fun t1_ack!130 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y1_ack!131 () (_ BitVec 64))
(declare-fun h_ack!132 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!130)
                    ((_ to_fp 11 53) t_ack!129))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!130)
                    ((_ to_fp 11 53) t_ack!129))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!130)
                     ((_ to_fp 11 53) t_ack!129))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!130)
                    ((_ to_fp 11 53) t_ack!129))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fac71c71c71c71c)
          ((_ to_fp 11 53) h_ack!132))
  y1_ack!131))

(check-sat)
(exit)
