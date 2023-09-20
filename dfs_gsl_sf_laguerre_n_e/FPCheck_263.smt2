(declare-fun a_ack!834 () (_ BitVec 32))
(declare-fun c_ack!833 () (_ BitVec 64))
(declare-fun b_ack!832 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!834 #x00000000)))
(assert (not (= #x00000000 a_ack!834)))
(assert (not (= #x00000001 a_ack!834)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!833) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!833) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!834 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!833) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!834)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!833) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!832) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!832) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!834))
(assert (bvslt #x00000003 a_ack!834))
(assert (bvslt #x00000004 a_ack!834))
(assert (bvslt #x00000005 a_ack!834))
(assert (bvslt #x00000006 a_ack!834))
(assert (bvslt #x00000007 a_ack!834))
(assert (bvslt #x00000008 a_ack!834))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!832))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!832))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!833)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!832)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!832))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!832)))
                   ((_ to_fp 11 53) c_ack!833)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) b_ack!832))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!833)))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!832))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!833)))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    ((_ to_fp 11 53) b_ack!832))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!833)))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!832))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!833))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!832))
                           ((_ to_fp 11 53) c_ack!833))))
      (a!6 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!833))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven a!3 a!6))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!832)))
                    a!6)))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!832)))
                   a!7))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven a!11 a!7))
                    ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!13 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!9 a!12))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!832)))
                    a!12)))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!832)))
                    a!13))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!17 a!13))
                            ((_ to_fp 11 53) #x4018000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x8000000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4020000000000000)
                    ((_ to_fp 11 53) b_ack!832)))
    (fp.div roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!14 a!18)
            ((_ to_fp 11 53) #x401c000000000000))))))))))

(check-sat)
(exit)
