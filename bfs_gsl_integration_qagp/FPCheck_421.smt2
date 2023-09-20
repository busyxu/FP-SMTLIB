(declare-fun limit_ack!6355 () (_ BitVec 64))
(declare-fun epsabs_ack!6360 () (_ BitVec 64))
(declare-fun a_ack!6361 () (_ BitVec 64))
(declare-fun x1_ack!6356 () (_ BitVec 64))
(declare-fun x2_ack!6357 () (_ BitVec 64))
(declare-fun x3_ack!6358 () (_ BitVec 64))
(declare-fun b_ack!6359 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6355)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6360)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6356) ((_ to_fp 11 53) a_ack!6361))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6357) ((_ to_fp 11 53) x1_ack!6356))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6358) ((_ to_fp 11 53) x2_ack!6357))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6359) ((_ to_fp 11 53) x3_ack!6358))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6361)
                                   ((_ to_fp 11 53) x1_ack!6356))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6356)
                                   ((_ to_fp 11 53) a_ack!6361)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6361)
                                   ((_ to_fp 11 53) x1_ack!6356)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
