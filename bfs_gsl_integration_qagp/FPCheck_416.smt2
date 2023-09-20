(declare-fun limit_ack!6250 () (_ BitVec 64))
(declare-fun epsabs_ack!6255 () (_ BitVec 64))
(declare-fun a_ack!6256 () (_ BitVec 64))
(declare-fun x1_ack!6251 () (_ BitVec 64))
(declare-fun x2_ack!6252 () (_ BitVec 64))
(declare-fun x3_ack!6253 () (_ BitVec 64))
(declare-fun b_ack!6254 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6250)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6255)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6251) ((_ to_fp 11 53) a_ack!6256))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6252) ((_ to_fp 11 53) x1_ack!6251))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6253) ((_ to_fp 11 53) x2_ack!6252))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6254) ((_ to_fp 11 53) x3_ack!6253))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6256)
                                   ((_ to_fp 11 53) x1_ack!6251))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6251)
                                   ((_ to_fp 11 53) a_ack!6256)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6256)
                    ((_ to_fp 11 53) x1_ack!6251)))
    a!1)))

(check-sat)
(exit)
