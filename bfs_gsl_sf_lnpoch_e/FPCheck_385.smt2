(declare-fun a_ack!1237 () (_ BitVec 64))
(declare-fun b_ack!1236 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1237) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1237)
                     ((_ to_fp 11 53) b_ack!1236))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1236) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1236))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!1237))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1237) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1237)
                       ((_ to_fp 11 53) b_ack!1236))
               ((_ to_fp 11 53) a_ack!1237))
       ((_ to_fp 11 53) b_ack!1236)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1237)
                       ((_ to_fp 11 53) b_ack!1236))
               ((_ to_fp 11 53) b_ack!1236))
       ((_ to_fp 11 53) a_ack!1237)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1237)
                    ((_ to_fp 11 53) b_ack!1236))
            ((_ to_fp 11 53) #x4065600000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1237)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FADD_UNDERFLOW
  #xbf9a901651b2b525
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fa0163058fbcc17)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1237)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
