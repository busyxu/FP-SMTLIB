(declare-fun p_ack!257 () (_ BitVec 64))
(declare-fun k_ack!255 () (_ BitVec 32))
(declare-fun n_ack!256 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!257) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!257) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!256 k_ack!255)))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!257) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!257) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!257) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!257) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!255)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!256)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!255))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!255)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!256)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!255))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!255)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!256)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!255))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!255)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!256)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!255))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!255)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!256)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!255)))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!255)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!256)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!255)))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!256)
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    k_ack!255))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!256)
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    k_ack!255)))
                  ((_ to_fp 11 53) #x3fc999999999999a))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!255)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             k_ack!255)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #xbf9a901651b2b525)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa0163058fbcc17)
                    a!1)))))

(check-sat)
(exit)
