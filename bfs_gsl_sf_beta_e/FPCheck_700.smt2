(declare-fun a_ack!2299 () (_ BitVec 64))
(declare-fun b_ack!2298 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) a_ack!2299) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!2298) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2299) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2298) ((_ to_fp 11 53) #x4049000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2299) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2298) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2299)
                       ((_ to_fp 11 53) b_ack!2298))
               ((_ to_fp 11 53) a_ack!2299))
       ((_ to_fp 11 53) b_ack!2298)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2299)
                       ((_ to_fp 11 53) b_ack!2298))
               ((_ to_fp 11 53) b_ack!2298))
       ((_ to_fp 11 53) a_ack!2299)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2299)
                    ((_ to_fp 11 53) b_ack!2298))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2299) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2298) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2299) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2298) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2299) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!2298) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2299) ((_ to_fp 11 53) b_ack!2298))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2299) ((_ to_fp 11 53) b_ack!2298)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2299)
               ((_ to_fp 11 53) b_ack!2298))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2299) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2299) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2299) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2299) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fd0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!2299)
                  ((_ to_fp 11 53) #x4000000000000000)))
  #x3ff0000000000000))

(check-sat)
(exit)
