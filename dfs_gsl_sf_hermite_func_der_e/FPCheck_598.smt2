(declare-fun a_ack!3610 () (_ BitVec 32))
(declare-fun b_ack!3608 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!3609 () (_ BitVec 64))
(assert (not (bvslt a_ack!3610 #x00000000)))
(assert (not (bvslt b_ack!3608 #x00000000)))
(assert (not (= #x00000000 a_ack!3610)))
(assert (not (= #x00000001 a_ack!3610)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3608 a_ack!3610)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3608)))
(assert (bvslt b_ack!3608 a_ack!3610))
(assert (not (= #x00000000 (bvand (bvsub a_ack!3610 b_ack!3608) #x00000001))))
(assert (bvslt b_ack!3608 (bvsub a_ack!3610 b_ack!3608)))
(assert (not (bvslt #x00000000 b_ack!3608)))
(assert (bvsle #x00000001 (bvsub a_ack!3610 b_ack!3608)))
(assert (bvsle #x00000002 (bvsub a_ack!3610 b_ack!3608)))
(assert (bvsle #x00000003 (bvsub a_ack!3610 b_ack!3608)))
(assert (bvsle #x00000004 (bvsub a_ack!3610 b_ack!3608)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3609))
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3609))
                           a!1)
                   ((_ to_fp 11 53) #x3cc0000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3609))
                           a!2)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           a!1))))
  (FPCHECK_FMUL_ACCURACY (fp.abs ((_ to_fp 11 53) c_ack!3609)) a!3)))))

(check-sat)
(exit)
