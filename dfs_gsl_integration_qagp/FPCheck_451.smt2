(declare-fun limit_ack!7722 () (_ BitVec 64))
(declare-fun epsabs_ack!7727 () (_ BitVec 64))
(declare-fun epsrel_ack!7721 () (_ BitVec 64))
(declare-fun a_ack!7728 () (_ BitVec 64))
(declare-fun x1_ack!7723 () (_ BitVec 64))
(declare-fun x2_ack!7724 () (_ BitVec 64))
(declare-fun x3_ack!7725 () (_ BitVec 64))
(declare-fun b_ack!7726 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!7722)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7727) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7721)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7721)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7723) ((_ to_fp 11 53) a_ack!7728))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7724) ((_ to_fp 11 53) x1_ack!7723))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7725) ((_ to_fp 11 53) x2_ack!7724))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7726) ((_ to_fp 11 53) x3_ack!7725))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7728)
                                   ((_ to_fp 11 53) x1_ack!7723))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7723)
                                   ((_ to_fp 11 53) a_ack!7728)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7728)
                                   ((_ to_fp 11 53) x1_ack!7723)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
