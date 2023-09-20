(declare-fun limit_ack!5536 () (_ BitVec 64))
(declare-fun epsabs_ack!5541 () (_ BitVec 64))
(declare-fun a_ack!5542 () (_ BitVec 64))
(declare-fun x1_ack!5537 () (_ BitVec 64))
(declare-fun x2_ack!5538 () (_ BitVec 64))
(declare-fun x3_ack!5539 () (_ BitVec 64))
(declare-fun b_ack!5540 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5536)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5541)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5537) ((_ to_fp 11 53) a_ack!5542))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5538) ((_ to_fp 11 53) x1_ack!5537))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5539) ((_ to_fp 11 53) x2_ack!5538))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5540) ((_ to_fp 11 53) x3_ack!5539))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5542)
                                   ((_ to_fp 11 53) x1_ack!5537))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!5537)
                  ((_ to_fp 11 53) a_ack!5542)))
  #x3fe8fc7574fa6c62))

(check-sat)
(exit)
