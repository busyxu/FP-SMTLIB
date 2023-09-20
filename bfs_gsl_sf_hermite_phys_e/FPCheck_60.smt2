(declare-fun a_ack!251 () (_ BitVec 32))
(declare-fun b_ack!250 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!251 #x00000000)))
(assert (not (= #x00000000 a_ack!251)))
(assert (not (= #x00000001 a_ack!251)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!250) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) b_ack!250)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!250)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!250)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!250)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!250)))
                   (fp.abs ((_ to_fp 11 53) b_ack!250)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x4000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.abs ((_ to_fp 11 53) b_ack!250)))
  #x3cb0000000000000))

(check-sat)
(exit)
