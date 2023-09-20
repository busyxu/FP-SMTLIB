(declare-fun a_ack!1159 () (_ BitVec 32))
(declare-fun b_ack!1157 () (_ BitVec 32))
(declare-fun c_ack!1158 () (_ BitVec 64))
(assert (not (bvslt a_ack!1159 #x00000000)))
(assert (not (bvslt b_ack!1157 a_ack!1159)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1159 #x00000000)))
(assert (not (= #x00000000 a_ack!1159)))
(assert (= #x00000001 a_ack!1159))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1158) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1158) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1158) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1158) ((_ to_fp 11 53) #x4330000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1158)
                           ((_ to_fp 11 53) c_ack!1158)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1158)
                           ((_ to_fp 11 53) c_ack!1158)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
