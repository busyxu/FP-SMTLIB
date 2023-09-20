(declare-fun a_ack!2212 () (_ BitVec 64))
(declare-fun b_ack!2211 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2211) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2211) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2212) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!2211) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2212) ((_ to_fp 11 53) b_ack!2211))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2212) ((_ to_fp 11 53) b_ack!2211)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2212)
               ((_ to_fp 11 53) b_ack!2211))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2212) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2212) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2212) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2212) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2212) ((_ to_fp 11 53) #x4330000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2211) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2211) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2211) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2211) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2211) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2211) ((_ to_fp 11 53) #x4330000000000000))))
(assert (fp.geq ((_ to_fp 11 53) #x3ff0000000000000)
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) b_ack!2211))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2212)
                       ((_ to_fp 11 53) b_ack!2211))
               ((_ to_fp 11 53) a_ack!2212))
       ((_ to_fp 11 53) b_ack!2211)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2212)
                       ((_ to_fp 11 53) b_ack!2211))
               ((_ to_fp 11 53) b_ack!2211))
       ((_ to_fp 11 53) a_ack!2212)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2212)
                     ((_ to_fp 11 53) b_ack!2211))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2212)
                    ((_ to_fp 11 53) b_ack!2211))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2212)
                    ((_ to_fp 11 53) b_ack!2211))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2212)
                    ((_ to_fp 11 53) b_ack!2211))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2212)
                    ((_ to_fp 11 53) b_ack!2211))
            ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2212)
                    ((_ to_fp 11 53) b_ack!2211))
            ((_ to_fp 11 53) #x4330000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2212)
                     ((_ to_fp 11 53) b_ack!2211))
             ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2212)
                       ((_ to_fp 11 53) b_ack!2211)))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2212)
          ((_ to_fp 11 53) b_ack!2211))
  #xbfb999999999999a))

(check-sat)
(exit)
