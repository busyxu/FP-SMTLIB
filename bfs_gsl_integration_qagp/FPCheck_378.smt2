(declare-fun limit_ack!5711 () (_ BitVec 64))
(declare-fun epsabs_ack!5716 () (_ BitVec 64))
(declare-fun a_ack!5717 () (_ BitVec 64))
(declare-fun x1_ack!5712 () (_ BitVec 64))
(declare-fun x2_ack!5713 () (_ BitVec 64))
(declare-fun x3_ack!5714 () (_ BitVec 64))
(declare-fun b_ack!5715 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5711)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5716)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5712) ((_ to_fp 11 53) a_ack!5717))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5713) ((_ to_fp 11 53) x1_ack!5712))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5714) ((_ to_fp 11 53) x2_ack!5713))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5715) ((_ to_fp 11 53) x3_ack!5714))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5717)
                                   ((_ to_fp 11 53) x1_ack!5712))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5712)
                                   ((_ to_fp 11 53) a_ack!5717)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5717)
                                   ((_ to_fp 11 53) x1_ack!5712)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
