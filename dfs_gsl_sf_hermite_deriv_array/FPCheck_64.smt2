(declare-fun b_ack!510 () (_ BitVec 32))
(declare-fun a_ack!512 () (_ BitVec 32))
(declare-fun c_ack!511 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!510 #x00000000)))
(assert (not (bvslt a_ack!512 #x00000000)))
(assert (not (= #x00000000 b_ack!510)))
(assert (not (= #x00000001 b_ack!510)))
(assert (= #x00000000 a_ack!512))
(assert (not (bvslt b_ack!510 #x00000000)))
(assert (not (= #x00000000 b_ack!510)))
(assert (not (= #x00000001 b_ack!510)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!511) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!511)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!511)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!511)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!511)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!511)))
                   (fp.abs ((_ to_fp 11 53) c_ack!511)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x4000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.abs ((_ to_fp 11 53) c_ack!511)))
  #x3cb0000000000000))

(check-sat)
(exit)
