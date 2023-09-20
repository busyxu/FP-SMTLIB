(declare-fun limit_ack!5746 () (_ BitVec 64))
(declare-fun epsabs_ack!5751 () (_ BitVec 64))
(declare-fun a_ack!5752 () (_ BitVec 64))
(declare-fun x1_ack!5747 () (_ BitVec 64))
(declare-fun x2_ack!5748 () (_ BitVec 64))
(declare-fun x3_ack!5749 () (_ BitVec 64))
(declare-fun b_ack!5750 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5746)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5751)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5747) ((_ to_fp 11 53) a_ack!5752))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5748) ((_ to_fp 11 53) x1_ack!5747))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5749) ((_ to_fp 11 53) x2_ack!5748))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5750) ((_ to_fp 11 53) x3_ack!5749))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5752)
                                   ((_ to_fp 11 53) x1_ack!5747))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5747)
                                   ((_ to_fp 11 53) a_ack!5752)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5752)
                                   ((_ to_fp 11 53) x1_ack!5747)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
