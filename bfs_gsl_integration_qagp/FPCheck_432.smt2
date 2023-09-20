(declare-fun limit_ack!6537 () (_ BitVec 64))
(declare-fun epsabs_ack!6542 () (_ BitVec 64))
(declare-fun a_ack!6543 () (_ BitVec 64))
(declare-fun x1_ack!6538 () (_ BitVec 64))
(declare-fun x2_ack!6539 () (_ BitVec 64))
(declare-fun x3_ack!6540 () (_ BitVec 64))
(declare-fun b_ack!6541 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6537)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6542)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6538) ((_ to_fp 11 53) a_ack!6543))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6539) ((_ to_fp 11 53) x1_ack!6538))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6540) ((_ to_fp 11 53) x2_ack!6539))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6541) ((_ to_fp 11 53) x3_ack!6540))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6543)
                                   ((_ to_fp 11 53) x1_ack!6538))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6538)
                                   ((_ to_fp 11 53) a_ack!6543)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6543)
                                   ((_ to_fp 11 53) x1_ack!6538)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
