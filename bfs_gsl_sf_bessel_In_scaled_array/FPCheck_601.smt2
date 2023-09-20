(declare-fun a_ack!2564 () (_ BitVec 32))
(declare-fun b_ack!2562 () (_ BitVec 32))
(declare-fun c_ack!2563 () (_ BitVec 64))
(assert (not (bvslt b_ack!2562 a_ack!2564)))
(assert (not (bvslt a_ack!2564 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2563) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2562)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2563))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) c_ack!2563))
                          (fp.abs ((_ to_fp 11 53) c_ack!2563)))
                  ((_ to_fp 11 53) #x41fd6e2bc3b82b06))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2563))
                           (fp.abs ((_ to_fp 11 53) c_ack!2563))))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
