(declare-fun c_ack!6724 () (_ BitVec 64))
(declare-fun a_ack!6725 () (_ BitVec 32))
(declare-fun b_ack!6723 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6724) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!6725 #xffffffff)))
(assert (not (= #xffffffff a_ack!6725)))
(assert (= #x00000000 a_ack!6725))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6724) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6724) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!6723) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6724) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!6724) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!6723) ((_ to_fp 11 53) #x4031000000000000)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!6724))))))
  (FPCHECK_FDIV_OVERFLOW
    #x3ff0000000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3cb0000000000000) a!1))))

(check-sat)
(exit)
