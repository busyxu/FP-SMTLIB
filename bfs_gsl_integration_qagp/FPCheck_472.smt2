(declare-fun limit_ack!7125 () (_ BitVec 64))
(declare-fun epsabs_ack!7130 () (_ BitVec 64))
(declare-fun a_ack!7131 () (_ BitVec 64))
(declare-fun x1_ack!7126 () (_ BitVec 64))
(declare-fun x2_ack!7127 () (_ BitVec 64))
(declare-fun x3_ack!7128 () (_ BitVec 64))
(declare-fun b_ack!7129 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7125)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!7130)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7126) ((_ to_fp 11 53) a_ack!7131))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7127) ((_ to_fp 11 53) x1_ack!7126))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7128) ((_ to_fp 11 53) x2_ack!7127))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7129) ((_ to_fp 11 53) x3_ack!7128))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7131)
                                   ((_ to_fp 11 53) x1_ack!7126))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7126)
                                   ((_ to_fp 11 53) a_ack!7131)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7131)
                                   ((_ to_fp 11 53) x1_ack!7126)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
