(declare-fun a_ack!6364 () (_ BitVec 64))
(declare-fun b_ack!6362 () (_ BitVec 64))
(declare-fun c_ack!6363 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!6364) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6362) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!6363) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!6363)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!6363)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!6364)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!6364)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!6363)
                       ((_ to_fp 11 53) #x3fb999999999999a))
               ((_ to_fp 11 53) c_ack!6363))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!6363)
                       ((_ to_fp 11 53) #x3fb999999999999a))
               ((_ to_fp 11 53) #x3fb999999999999a))
       ((_ to_fp 11 53) c_ack!6363)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6364)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!6363)
                    ((_ to_fp 11 53) #x3fb999999999999a)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6364)
                       ((_ to_fp 11 53) c_ack!6363))
               ((_ to_fp 11 53) c_ack!6363))
       ((_ to_fp 11 53) a_ack!6364)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!6364)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6364)
                       ((_ to_fp 11 53) c_ack!6363)))
       ((_ to_fp 11 53) c_ack!6363)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6364)
                                   ((_ to_fp 11 53) c_ack!6363))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6364)
                                   ((_ to_fp 11 53) c_ack!6363))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   a!1)
                           a!1)
                   a!1))
      (a!3 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf9a901651b2b525)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fa0163058fbcc17)
                                   a!1)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf886be8ce175c95)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f93c8855b9a90b0)
                                   a!3)))))
  (FPCHECK_FMUL_ACCURACY
    a!2
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x3f7399c6b2fe3c2e)
            (fp.mul roundNearestTiesToEven a!1 a!4)))))))

(check-sat)
(exit)
