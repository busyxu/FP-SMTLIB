(declare-fun limit_ack!6285 () (_ BitVec 64))
(declare-fun epsabs_ack!6290 () (_ BitVec 64))
(declare-fun a_ack!6291 () (_ BitVec 64))
(declare-fun x1_ack!6286 () (_ BitVec 64))
(declare-fun x2_ack!6287 () (_ BitVec 64))
(declare-fun x3_ack!6288 () (_ BitVec 64))
(declare-fun b_ack!6289 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6285)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6290)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6286) ((_ to_fp 11 53) a_ack!6291))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6287) ((_ to_fp 11 53) x1_ack!6286))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6288) ((_ to_fp 11 53) x2_ack!6287))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6289) ((_ to_fp 11 53) x3_ack!6288))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6291)
                                   ((_ to_fp 11 53) x1_ack!6286))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6286)
                                   ((_ to_fp 11 53) a_ack!6291)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6291)
                                   ((_ to_fp 11 53) x1_ack!6286)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
