(declare-fun b_ack!522 () (_ BitVec 32))
(declare-fun a_ack!524 () (_ BitVec 32))
(declare-fun c_ack!523 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!522 #x00000000)))
(assert (not (bvslt a_ack!524 b_ack!522)))
(assert (= #x00000000 b_ack!522))
(assert (not (bvslt a_ack!524 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!523) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!523) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!524)))
(assert (not (= #x00000001 a_ack!524)))
(assert (bvsle #x00000002 a_ack!524))
(assert (not (bvsle #x00000003 a_ack!524)))
(assert (bvsle #x00000000 a_ack!524))
(assert (bvsle #x00000001 a_ack!524))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!523)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!524)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.lt (fp.mul roundNearestTiesToEven
                          a!1
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!524)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3e50000000000000))))
  (not a!2))))
(assert (FPCHECK_FADD_UNDERFLOW c_ack!523 #x3ff0000000000000))

(check-sat)
(exit)
