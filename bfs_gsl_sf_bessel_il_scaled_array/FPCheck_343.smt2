(declare-fun b_ack!1221 () (_ BitVec 64))
(declare-fun a_ack!1222 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1221) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1221) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!1222) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1221) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #xffffffff a_ack!1222))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1221) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1221))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!1221)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1221))
                           (fp.abs ((_ to_fp 11 53) b_ack!1221)))
                   (fp.abs ((_ to_fp 11 53) b_ack!1221)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!1221)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!1221)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1221))
                           (fp.abs ((_ to_fp 11 53) b_ack!1221)))
                   (fp.abs ((_ to_fp 11 53) b_ack!1221)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!1221)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1221))
                           (fp.abs ((_ to_fp 11 53) b_ack!1221)))
                   ((_ to_fp 11 53) #x3e5ae64567f544e4))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ec71de3a556c734)
                         a!1)
                 ((_ to_fp 11 53) #x3ec71de3a556c734))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1221))
                           (fp.abs ((_ to_fp 11 53) b_ack!1221)))
                   ((_ to_fp 11 53) #x3e5ae64567f544e4))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ec71de3a556c734)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ec71de3a556c734))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1221))
                           (fp.abs ((_ to_fp 11 53) b_ack!1221)))
                   ((_ to_fp 11 53) #x3e5ae64567f544e4))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1221))
                           (fp.abs ((_ to_fp 11 53) b_ack!1221)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ec71de3a556c734)
                           a!1))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1221))
                           (fp.abs ((_ to_fp 11 53) b_ack!1221)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f2a01a01a01a01a)
                           a!2))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1221))
                           (fp.abs ((_ to_fp 11 53) b_ack!1221)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f81111111111111)
                           a!3))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1221))
                           (fp.abs ((_ to_fp 11 53) b_ack!1221)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc5555555555555)
                           a!4))))
  (FPCHECK_FADD_UNDERFLOW #x3ff0000000000000 a!5)))))))

(check-sat)
(exit)
