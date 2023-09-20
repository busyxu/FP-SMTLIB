(declare-fun b_ack!501 () (_ BitVec 64))
(declare-fun a_ack!502 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!501) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!502)
                                   ((_ to_fp 11 53) a_ack!502))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!501)
                                   ((_ to_fp 11 53) b_ack!501)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!502)
                                  ((_ to_fp 11 53) a_ack!502))
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!501)
                                  ((_ to_fp 11 53) b_ack!501)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!502)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!502)
                                   ((_ to_fp 11 53) a_ack!502))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!501)
                                   ((_ to_fp 11 53) b_ack!501))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3fe76c8b43958106)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!502)
                           ((_ to_fp 11 53) a_ack!502))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!501)
                           ((_ to_fp 11 53) b_ack!501)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!502)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!501))
                           a!1)
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FMUL_OVERFLOW a!2 a!3))))

(check-sat)
(exit)
