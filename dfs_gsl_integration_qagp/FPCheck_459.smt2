(declare-fun limit_ack!7874 () (_ BitVec 64))
(declare-fun epsabs_ack!7879 () (_ BitVec 64))
(declare-fun epsrel_ack!7873 () (_ BitVec 64))
(declare-fun a_ack!7880 () (_ BitVec 64))
(declare-fun x1_ack!7875 () (_ BitVec 64))
(declare-fun x2_ack!7876 () (_ BitVec 64))
(declare-fun x3_ack!7877 () (_ BitVec 64))
(declare-fun b_ack!7878 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7874)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7879) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7873)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7873)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7875) ((_ to_fp 11 53) a_ack!7880))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7876) ((_ to_fp 11 53) x1_ack!7875))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7877) ((_ to_fp 11 53) x2_ack!7876))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7878) ((_ to_fp 11 53) x3_ack!7877))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7880)
                                   ((_ to_fp 11 53) x1_ack!7875))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7875)
                                   ((_ to_fp 11 53) a_ack!7880)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7880)
                                   ((_ to_fp 11 53) x1_ack!7875)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
