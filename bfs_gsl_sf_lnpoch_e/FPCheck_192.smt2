(declare-fun a_ack!627 () (_ BitVec 64))
(declare-fun b_ack!626 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!627) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!627)
                     ((_ to_fp 11 53) b_ack!626))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!626) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!626))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!627))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!627) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!627)
                       ((_ to_fp 11 53) b_ack!626))
               ((_ to_fp 11 53) a_ack!627))
       ((_ to_fp 11 53) b_ack!626)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!627)
                       ((_ to_fp 11 53) b_ack!626))
               ((_ to_fp 11 53) b_ack!626))
       ((_ to_fp 11 53) a_ack!627)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!627)
               ((_ to_fp 11 53) b_ack!626))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!627) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!627) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!627) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!627) ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!627) (CF_floor a_ack!627))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!627)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!627)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!627) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!627) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) a_ack!627))
          ((_ to_fp 11 53) #x402e000000000000))
  #x4014000000000000))

(check-sat)
(exit)
