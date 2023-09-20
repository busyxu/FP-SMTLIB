(declare-fun a_ack!792 () (_ BitVec 32))
(declare-fun c_ack!791 () (_ BitVec 64))
(declare-fun b_ack!790 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!792 #x00000000)))
(assert (not (= #x00000000 a_ack!792)))
(assert (not (= #x00000001 a_ack!792)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!791) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!791) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!792 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!791) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!792)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!791) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!790) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!790) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!792))
(assert (bvslt #x00000003 a_ack!792))
(assert (bvslt #x00000004 a_ack!792))
(assert (bvslt #x00000005 a_ack!792))
(assert (bvslt #x00000006 a_ack!792))
(assert (bvslt #x00000007 a_ack!792))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x402c000000000000)
                                   ((_ to_fp 11 53) b_ack!790))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!791)))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!790))))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!790))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!791)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!790)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!790))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!790)))
                   ((_ to_fp 11 53) c_ack!791)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!790))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!791)))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!790))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!791)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    ((_ to_fp 11 53) b_ack!790))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!791)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!790))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!791))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!790))
                           ((_ to_fp 11 53) c_ack!791))))
      (a!7 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) c_ack!791))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!6)))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven a!4 a!7))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!790)))
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!790)))
                   a!8))
      (a!13 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven a!12 a!8))
                    ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven a!10 a!13))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!790)))
                    a!13)))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!790)))
                    a!14))
      (a!19 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!17
                                    (fp.mul roundNearestTiesToEven a!18 a!14))
                            ((_ to_fp 11 53) #x4018000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!15 a!19)
            ((_ to_fp 11 53) #x401c000000000000))))))))))

(check-sat)
(exit)
