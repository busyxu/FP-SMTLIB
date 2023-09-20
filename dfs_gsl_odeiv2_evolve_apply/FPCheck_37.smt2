(declare-fun t_ack!284 () (_ BitVec 64))
(declare-fun t1_ack!285 () (_ BitVec 64))
(declare-fun h_ack!286 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!285)
                    ((_ to_fp 11 53) t_ack!284))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!285)
               ((_ to_fp 11 53) t_ack!284))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!286) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!285)
                ((_ to_fp 11 53) t_ack!284))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!286)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!285)
               ((_ to_fp 11 53) t_ack!284))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fac71c71c71c71c
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!285)
          ((_ to_fp 11 53) t_ack!284))))

(check-sat)
(exit)
