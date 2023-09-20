(declare-fun limit_ack!522 () (_ BitVec 64))
(declare-fun epsabs_ack!527 () (_ BitVec 64))
(declare-fun epsrel_ack!521 () (_ BitVec 64))
(declare-fun a_ack!528 () (_ BitVec 64))
(declare-fun x1_ack!523 () (_ BitVec 64))
(declare-fun x2_ack!524 () (_ BitVec 64))
(declare-fun x3_ack!525 () (_ BitVec 64))
(declare-fun b_ack!526 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!522)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!527) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!521)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!521)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!523) ((_ to_fp 11 53) a_ack!528))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!524) ((_ to_fp 11 53) x1_ack!523))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!525) ((_ to_fp 11 53) x2_ack!524))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!526) ((_ to_fp 11 53) x3_ack!525))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!528)
                                   ((_ to_fp 11 53) x1_ack!523))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!523)
                                   ((_ to_fp 11 53) a_ack!528)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!528)
                                   ((_ to_fp 11 53) x1_ack!523)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
