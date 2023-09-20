(declare-fun a_ack!2651 () (_ BitVec 32))
(declare-fun b_ack!2649 () (_ BitVec 32))
(declare-fun c_ack!2650 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!2649 a_ack!2651)))
(assert (not (bvslt a_ack!2651 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2650) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!2649))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2650))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!2650))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!2650)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2650))
                           (fp.abs ((_ to_fp 11 53) c_ack!2650)))
                   (fp.abs ((_ to_fp 11 53) c_ack!2650)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!2650)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!2650)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2650))
                           (fp.abs ((_ to_fp 11 53) c_ack!2650)))
                   (fp.abs ((_ to_fp 11 53) c_ack!2650)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!2650)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2650))
                           (fp.abs ((_ to_fp 11 53) c_ack!2650)))
                   ((_ to_fp 11 53) #x4012000000000000))))
  (FPCHECK_FSUB_ACCURACY a!1 #x3ff0000000000000)))

(check-sat)
(exit)
