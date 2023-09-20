(declare-fun a_ack!2509 () (_ BitVec 64))
(declare-fun b_ack!2508 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2508))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!2509)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2508) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2509) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2509)
                    ((_ to_fp 11 53) b_ack!2508))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2509) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2509) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2509)
                       ((_ to_fp 11 53) b_ack!2508))
               ((_ to_fp 11 53) a_ack!2509))
       ((_ to_fp 11 53) b_ack!2508)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2509)
                       ((_ to_fp 11 53) b_ack!2508))
               ((_ to_fp 11 53) b_ack!2508))
       ((_ to_fp 11 53) a_ack!2509)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2509)
          ((_ to_fp 11 53) b_ack!2508))
  #x3ff0000000000000))

(check-sat)
(exit)
