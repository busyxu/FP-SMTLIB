(declare-fun b_ack!393 () (_ BitVec 32))
(declare-fun a_ack!395 () (_ BitVec 32))
(declare-fun c_ack!394 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!393 #x00000000)))
(assert (not (bvslt a_ack!395 b_ack!393)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!394) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!394) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!393))
(assert (not (bvslt a_ack!395 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!394) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!394) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!395)))
(assert (= #x00000001 a_ack!395))
(assert (bvsle #x00000000 a_ack!395))
(assert (bvsle #x00000001 a_ack!395))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!394)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!395)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) roundNearestTiesToEven a_ack!395)
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3e50000000000000))))
(assert (not (bvsle #x00000002 a_ack!395)))
(assert (bvsle #x00000000 a_ack!395))
(assert (bvsle #x00000001 a_ack!395))
(assert (FPCHECK_FMUL_ACCURACY c_ack!394 #x3fdf45437857749a))

(check-sat)
(exit)
