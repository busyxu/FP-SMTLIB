(declare-fun a_ack!556 () (_ BitVec 32))
(declare-fun b_ack!554 () (_ BitVec 32))
(declare-fun c_ack!555 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!556 #x00000000)))
(assert (not (bvslt b_ack!554 a_ack!556)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!555) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt (bvadd #x00000001 b_ack!554) #x00000000))
(assert (= #x00000000 (bvand (bvsub #xffffffff b_ack!554) #x00000001)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!555) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!554)))
(assert (not (= #xfffffffe b_ack!554)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!555) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #xffffffff b_ack!554))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) c_ack!555)
                      ((_ to_fp 11 53) c_ack!555))
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3f48406003b2ae5a))))))
(assert (FPCHECK_FMUL_OVERFLOW #x3f20000000000000 c_ack!555))

(check-sat)
(exit)
