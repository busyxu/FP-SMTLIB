(declare-fun q_ack!312 () (_ BitVec 64))
(declare-fun j_ack!313 () (_ BitVec 32))
(declare-fun n_ack!311 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!312) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!313 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!313)))
(assert (= #x00000000 (bvsrem n_ack!311 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!311 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!312) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!311 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!312) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!311 #x00000000)))
(assert (= #x00000000 n_ack!311))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!312) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!311)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!311)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!311)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!311))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   ((_ to_fp 11 53) q_ack!312))
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FSUB_UNDERFLOW a!3 a!5))))

(check-sat)
(exit)
