(declare-fun a_ack!692 () (_ BitVec 64))
(declare-fun b_ack!691 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!691) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!691) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!691)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!692)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!691)
                                  ((_ to_fp 11 53) a_ack!692))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!691)
                                  ((_ to_fp 11 53) a_ack!692)))
                  ((_ to_fp 11 53) a_ack!692))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) b_ack!691))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!691)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!692)
                    ((_ to_fp 11 53) #x408f400000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!691)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!692))))

(check-sat)
(exit)
