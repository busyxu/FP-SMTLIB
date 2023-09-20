(declare-fun p_ack!3934 () (_ BitVec 64))
(declare-fun k_ack!3932 () (_ BitVec 32))
(declare-fun n_ack!3933 () (_ BitVec 32))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!3934) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!3934) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!3933 k_ack!3932)))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!3934) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!3934) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!3934) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!3934) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3932)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3933)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3932))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             k_ack!3932)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!3932)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!3933)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!3932))))))
  (fp.gt ((_ to_fp 11 53) p_ack!3934) a!1)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3933)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3932))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!3933)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!3932))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!3932)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
  (not (fp.lt (fp.mul roundNearestTiesToEven a!2 (CF_log p_ack!3934))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!3933)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!3932))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!3932)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
  (not (fp.eq (fp.mul roundNearestTiesToEven a!2 (CF_log p_ack!3934))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3933)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3932))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!3933)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!3932))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!3932)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
  (fp.leq (fp.mul roundNearestTiesToEven a!2 (CF_log p_ack!3934))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  (fp.sub roundNearestTiesToEven
                          ((_ to_fp_unsigned 11 53)
                            roundNearestTiesToEven
                            n_ack!3933)
                          ((_ to_fp_unsigned 11 53)
                            roundNearestTiesToEven
                            k_ack!3932)))))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3933)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3932))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3933)
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3932))
  #x3ff0000000000000))

(check-sat)
(exit)
