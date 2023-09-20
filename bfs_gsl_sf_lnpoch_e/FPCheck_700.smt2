(declare-fun a_ack!2257 () (_ BitVec 64))
(declare-fun b_ack!2256 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2257) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2257)
                     ((_ to_fp 11 53) b_ack!2256))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2256) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2256))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!2257))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2257) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2257)
                       ((_ to_fp 11 53) b_ack!2256))
               ((_ to_fp 11 53) a_ack!2257))
       ((_ to_fp 11 53) b_ack!2256)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2257)
                       ((_ to_fp 11 53) b_ack!2256))
               ((_ to_fp 11 53) b_ack!2256))
       ((_ to_fp 11 53) a_ack!2257)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2257)
                    ((_ to_fp 11 53) b_ack!2256))
            ((_ to_fp 11 53) #x4065600000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2257)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0163058fbcc17)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2257)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf9a901651b2b525)
                         a!1)
                 ((_ to_fp 11 53) #xbf9a901651b2b525))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0163058fbcc17)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2257)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf9a901651b2b525)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbf9a901651b2b525))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf9a901651b2b525)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0163058fbcc17)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2257)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!2257)
            ((_ to_fp 11 53) #x3ff0000000000000))
    a!1)))

(check-sat)
(exit)
