(declare-fun a_ack!1823 () (_ BitVec 32))
(declare-fun b_ack!1821 () (_ BitVec 32))
(declare-fun c_ack!1822 () (_ BitVec 64))
(assert (not (bvslt a_ack!1823 #x00000000)))
(assert (not (bvslt b_ack!1821 a_ack!1823)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1822) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1823 #x00000000)))
(assert (not (= #x00000000 a_ack!1823)))
(assert (not (= #x00000001 a_ack!1823)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1822) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1822) ((_ to_fp 11 53) #x4014000000000000)))
(assert (not (bvule (bvadd #xffffffff a_ack!1823) #x000000aa)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             (bvadd #xffffffff a_ack!1823))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b))))

(check-sat)
(exit)
