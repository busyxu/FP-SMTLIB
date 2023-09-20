(declare-fun b_ack!554 () (_ BitVec 64))
(declare-fun a_ack!555 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!554) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!555 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!554) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!555))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!554) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!554))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!554)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!554))
                           (fp.abs ((_ to_fp 11 53) b_ack!554)))
                   (fp.abs ((_ to_fp 11 53) b_ack!554)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!554)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!554)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!554))
                           (fp.abs ((_ to_fp 11 53) b_ack!554)))
                   (fp.abs ((_ to_fp 11 53) b_ack!554)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!554)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!554))
                           (fp.abs ((_ to_fp 11 53) b_ack!554)))
                   ((_ to_fp 11 53) #x3e5ae64567f544e4))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ec71de3a556c734)
                         a!1)
                 ((_ to_fp 11 53) #x3ec71de3a556c734))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!554))
                           (fp.abs ((_ to_fp 11 53) b_ack!554)))
                   ((_ to_fp 11 53) #x3e5ae64567f544e4))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ec71de3a556c734)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ec71de3a556c734))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!554))
                           (fp.abs ((_ to_fp 11 53) b_ack!554)))
                   ((_ to_fp 11 53) #x3e5ae64567f544e4))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!554))
                           (fp.abs ((_ to_fp 11 53) b_ack!554)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ec71de3a556c734)
                           a!1))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.abs ((_ to_fp 11 53) b_ack!554))
            (fp.abs ((_ to_fp 11 53) b_ack!554)))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3f2a01a01a01a01a) a!2)))))

(check-sat)
(exit)
