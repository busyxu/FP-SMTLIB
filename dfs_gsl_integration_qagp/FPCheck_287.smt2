(declare-fun limit_ack!4930 () (_ BitVec 64))
(declare-fun epsabs_ack!4935 () (_ BitVec 64))
(declare-fun epsrel_ack!4929 () (_ BitVec 64))
(declare-fun a_ack!4936 () (_ BitVec 64))
(declare-fun x1_ack!4931 () (_ BitVec 64))
(declare-fun x2_ack!4932 () (_ BitVec 64))
(declare-fun x3_ack!4933 () (_ BitVec 64))
(declare-fun b_ack!4934 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4930)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4935) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4929)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4929)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4931) ((_ to_fp 11 53) a_ack!4936))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4932) ((_ to_fp 11 53) x1_ack!4931))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4933) ((_ to_fp 11 53) x2_ack!4932))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4934) ((_ to_fp 11 53) x3_ack!4933))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4936)
                                   ((_ to_fp 11 53) x1_ack!4931))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4931)
                                   ((_ to_fp 11 53) a_ack!4936)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4936)
                                   ((_ to_fp 11 53) x1_ack!4931)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
