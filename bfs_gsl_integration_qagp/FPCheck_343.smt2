(declare-fun limit_ack!5193 () (_ BitVec 64))
(declare-fun epsabs_ack!5198 () (_ BitVec 64))
(declare-fun a_ack!5199 () (_ BitVec 64))
(declare-fun x1_ack!5194 () (_ BitVec 64))
(declare-fun x2_ack!5195 () (_ BitVec 64))
(declare-fun x3_ack!5196 () (_ BitVec 64))
(declare-fun b_ack!5197 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5193)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5198)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5194) ((_ to_fp 11 53) a_ack!5199))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5195) ((_ to_fp 11 53) x1_ack!5194))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5196) ((_ to_fp 11 53) x2_ack!5195))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5197) ((_ to_fp 11 53) x3_ack!5196))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5199)
                                   ((_ to_fp 11 53) x1_ack!5194))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5194)
                                   ((_ to_fp 11 53) a_ack!5199)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5199)
                                   ((_ to_fp 11 53) x1_ack!5194)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
