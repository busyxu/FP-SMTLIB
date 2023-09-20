(declare-fun t_ack!120 () (_ BitVec 64))
(declare-fun t1_ack!118 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!119 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!118)
                                  ((_ to_fp 11 53) t_ack!120)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!118)
                       ((_ to_fp 11 53) t_ack!120)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!118)
                       ((_ to_fp 11 53) t_ack!120))
               ((_ to_fp 11 53) t_ack!120))
       ((_ to_fp 11 53) t1_ack!118)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!118)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!118)
                       ((_ to_fp 11 53) t_ack!120)))
       ((_ to_fp 11 53) t_ack!120)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!118)
                    ((_ to_fp 11 53) t_ack!120))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!118)
               ((_ to_fp 11 53) t_ack!120))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) y0_ack!119)
          ((_ to_fp 11 53) y0_ack!119))
  #x3ff0000000000000))

(check-sat)
(exit)
