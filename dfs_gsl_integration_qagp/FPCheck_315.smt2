(declare-fun limit_ack!5354 () (_ BitVec 64))
(declare-fun epsabs_ack!5359 () (_ BitVec 64))
(declare-fun epsrel_ack!5353 () (_ BitVec 64))
(declare-fun a_ack!5360 () (_ BitVec 64))
(declare-fun x1_ack!5355 () (_ BitVec 64))
(declare-fun x2_ack!5356 () (_ BitVec 64))
(declare-fun x3_ack!5357 () (_ BitVec 64))
(declare-fun b_ack!5358 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5354)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5359) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5353)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5353)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5355) ((_ to_fp 11 53) a_ack!5360))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5356) ((_ to_fp 11 53) x1_ack!5355))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5357) ((_ to_fp 11 53) x2_ack!5356))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5358) ((_ to_fp 11 53) x3_ack!5357))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5360)
                                   ((_ to_fp 11 53) x1_ack!5355))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5355)
                                   ((_ to_fp 11 53) a_ack!5360)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5360)
                    ((_ to_fp 11 53) x1_ack!5355)))
    a!1)))

(check-sat)
(exit)
