(declare-fun a_ack!2310 () (_ BitVec 32))
(declare-fun b_ack!2308 () (_ BitVec 32))
(declare-fun c_ack!2309 () (_ BitVec 64))
(assert (not (bvslt a_ack!2310 #x00000000)))
(assert (not (bvslt b_ack!2308 #x00000000)))
(assert (not (= #x00000000 a_ack!2310)))
(assert (= #x00000001 a_ack!2310))
(assert (bvsle #x00000002 b_ack!2308))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2309))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2309))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
  (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
         ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
