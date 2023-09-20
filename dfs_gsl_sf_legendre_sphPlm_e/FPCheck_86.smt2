(declare-fun b_ack!438 () (_ BitVec 32))
(declare-fun a_ack!440 () (_ BitVec 32))
(declare-fun c_ack!439 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!438 #x00000000)))
(assert (not (bvslt a_ack!440 b_ack!438)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!439) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!439) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!438))
(assert (not (bvslt a_ack!440 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!439) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!439) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!440)))
(assert (not (= #x00000001 a_ack!440)))
(assert (not (= #x00000002 a_ack!440)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!439) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!439) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!440 #x000186a0))
(assert (bvsle #x00000002 a_ack!440))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!439))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!439))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3cb0000000000000)))
    #x4000000000000000)))

(check-sat)
(exit)
