(declare-fun a_ack!2774 () (_ BitVec 32))
(declare-fun b_ack!2772 () (_ BitVec 32))
(declare-fun c_ack!2773 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2772 a_ack!2774)))
(assert (not (bvslt a_ack!2774 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2773) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!2772))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2773))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!2773))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!2773))
             ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!2773)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c814b37f4b51f71))))
      (a!37 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!3)
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3c814b37f4b51f71))))
      (a!39 (fp.abs (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3c814b37f4b51f71)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbcb3749ef34bc35f))))
      (a!38 (fp.add roundNearestTiesToEven
                    a!37
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!4)
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3cb3749ef34bc35f))))
      (a!41 (fp.abs (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #xbcb3749ef34bc35f)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   a!5
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c814b37f4b51f71))))
      (a!40 (fp.add roundNearestTiesToEven
                    a!38
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven (fp.abs a!5) a!39)
                            ((_ to_fp 11 53) #x3cb87fe49aab41e0)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #xbcb87fe49aab41e0)))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbcb3749ef34bc35f))))
      (a!42 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven (fp.abs a!7) a!41)
                            ((_ to_fp 11 53) #x3cdfb49140a1644f)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x3cdfb49140a1644f)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #xbcb87fe49aab41e0)))
                    ((_ to_fp 11 53) #x3cf13428ff6ed89c)))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.abs a!9)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #xbcb87fe49aab41e0))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!10)))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!11
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3cdfb49140a1644f)))
                    ((_ to_fp 11 53) #xbd057b6f81f8fd0e)))
      (a!44 (fp.add roundNearestTiesToEven
                    (fp.abs a!11)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3cdfb49140a1644f))))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!12))
      (a!45 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!42
                            (fp.add roundNearestTiesToEven
                                    a!43
                                    ((_ to_fp 11 53) #x3cf13428ff6ed89c)))
                    (fp.add roundNearestTiesToEven
                            a!44
                            ((_ to_fp 11 53) #x3d057b6f81f8fd0e)))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!13 a!10)
                            ((_ to_fp 11 53) #xbd275e38b1686811))))
      (a!46 (fp.add roundNearestTiesToEven
                    a!45
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!13)
                                    (fp.abs a!10))
                            ((_ to_fp 11 53) #x3d275e38b1686811)))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!14 a!12)
                            ((_ to_fp 11 53) #x3d1153dd90af7a01))))
      (a!47 (fp.add roundNearestTiesToEven
                    a!46
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!14)
                                    (fp.abs a!12))
                            ((_ to_fp 11 53) #x3d1153dd90af7a01)))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!15
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!13 a!10)
                                    ((_ to_fp 11 53) #xbd275e38b1686811)))
                    ((_ to_fp 11 53) #x3d5b1cc4818bd483)))
      (a!48 (fp.add roundNearestTiesToEven
                    (fp.abs a!15)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!13 a!10)
                                    ((_ to_fp 11 53) #xbd275e38b1686811))))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!16)))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!17
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!14 a!12)
                                    ((_ to_fp 11 53) #x3d1153dd90af7a01)))
                    ((_ to_fp 11 53) #x3d69434256cbafff)))
      (a!49 (fp.add roundNearestTiesToEven
                    (fp.abs a!17)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!14 a!12)
                                    ((_ to_fp 11 53) #x3d1153dd90af7a01))))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!18))
      (a!50 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!47
                            (fp.add roundNearestTiesToEven
                                    a!48
                                    ((_ to_fp 11 53) #x3d5b1cc4818bd483)))
                    (fp.add roundNearestTiesToEven
                            a!49
                            ((_ to_fp 11 53) #x3d69434256cbafff)))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!19 a!16)
                            ((_ to_fp 11 53) #xbd7f90503bfe65f2))))
      (a!51 (fp.add roundNearestTiesToEven
                    a!50
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!19)
                                    (fp.abs a!16))
                            ((_ to_fp 11 53) #x3d7f90503bfe65f2)))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!20 a!18)
                            ((_ to_fp 11 53) #xbdad0fd580a89e08))))
      (a!52 (fp.add roundNearestTiesToEven
                    a!51
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!20)
                                    (fp.abs a!18))
                            ((_ to_fp 11 53) #x3dad0fd580a89e08)))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!21
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!19 a!16)
                                    ((_ to_fp 11 53) #xbd7f90503bfe65f2)))
                    ((_ to_fp 11 53) #xbdc1511c7b4b7113)))
      (a!53 (fp.add roundNearestTiesToEven
                    (fp.abs a!21)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!19 a!16)
                                    ((_ to_fp 11 53) #xbd7f90503bfe65f2))))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!22)))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!23
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!20 a!18)
                                    ((_ to_fp 11 53) #xbdad0fd580a89e08)))
                    ((_ to_fp 11 53) #x3daa24fda5ac4a25)))
      (a!54 (fp.add roundNearestTiesToEven
                    (fp.abs a!23)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!20 a!18)
                                    ((_ to_fp 11 53) #xbdad0fd580a89e08))))))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!24))
      (a!55 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!52
                            (fp.add roundNearestTiesToEven
                                    a!53
                                    ((_ to_fp 11 53) #x3dc1511c7b4b7113)))
                    (fp.add roundNearestTiesToEven
                            a!54
                            ((_ to_fp 11 53) #x3daa24fda5ac4a25)))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!25 a!22)
                            ((_ to_fp 11 53) #x3e00f9ccb61ab9a0))))
      (a!56 (fp.add roundNearestTiesToEven
                    a!55
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!25)
                                    (fp.abs a!22))
                            ((_ to_fp 11 53) #x3e00f9ccb61ab9a0)))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!26 a!24)
                            ((_ to_fp 11 53) #x3e2d2c64a9c0b0ac))))
      (a!57 (fp.add roundNearestTiesToEven
                    a!56
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!26)
                                    (fp.abs a!24))
                            ((_ to_fp 11 53) #x3e2d2c64a9c0b0ac)))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!27
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!25 a!22)
                                    ((_ to_fp 11 53) #x3e00f9ccb61ab9a0)))
                    ((_ to_fp 11 53) #x3e58569280edf9e5)))
      (a!58 (fp.add roundNearestTiesToEven
                    (fp.abs a!27)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!25 a!22)
                                    ((_ to_fp 11 53) #x3e00f9ccb61ab9a0))))))
(let ((a!29 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!28)))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!29
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!26 a!24)
                                    ((_ to_fp 11 53) #x3e2d2c64a9c0b0ac)))
                    ((_ to_fp 11 53) #x3e8b8007d9c3a27d)))
      (a!59 (fp.add roundNearestTiesToEven
                    (fp.abs a!29)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!26 a!24)
                                    ((_ to_fp 11 53) #x3e2d2c64a9c0b0ac))))))
(let ((a!31 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!30))
      (a!60 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!57
                            (fp.add roundNearestTiesToEven
                                    a!58
                                    ((_ to_fp 11 53) #x3e58569280edf9e5)))
                    (fp.add roundNearestTiesToEven
                            a!59
                            ((_ to_fp 11 53) #x3e8b8007d9c3a27d)))))
(let ((a!32 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!31 a!28)
                            ((_ to_fp 11 53) #x3ec8412bc1013d6b))))
      (a!61 (fp.add roundNearestTiesToEven
                    a!60
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!31)
                                    (fp.abs a!28))
                            ((_ to_fp 11 53) #x3ec8412bc1013d6b)))))
(let ((a!33 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!32 a!30)
                            ((_ to_fp 11 53) #x3f120fa37899a1b5))))
      (a!62 (fp.add roundNearestTiesToEven
                    a!61
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!32)
                                    (fp.abs a!30))
                            ((_ to_fp 11 53) #x3f120fa37899a1b5)))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!33
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!31 a!28)
                                    ((_ to_fp 11 53) #x3ec8412bc1013d6b)))
                    ((_ to_fp 11 53) #x3f6b998ca2e5903f)))
      (a!63 (fp.add roundNearestTiesToEven
                    (fp.abs a!33)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!31 a!28)
                                    ((_ to_fp 11 53) #x3ec8412bc1013d6b))))))
(let ((a!35 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!34)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!32 a!30)
                            ((_ to_fp 11 53) #x3f120fa37899a1b5))))
      (a!64 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!34))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd8000000000000)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!35
                                    ((_ to_fp 11 53) #x3f9be62aca809cb5)))))
      (a!65 (fp.add roundNearestTiesToEven
                    a!64
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!32 a!30)
                                    ((_ to_fp 11 53) #x3f120fa37899a1b5)))))
      (a!69 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd8000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!35
                                    ((_ to_fp 11 53) #x3f9be62aca809cb5)))
                    ((_ to_fp 11 53) #x7ff8000000000001))))
(let ((a!66 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!62
                            (fp.add roundNearestTiesToEven
                                    a!63
                                    ((_ to_fp 11 53) #x3f6b998ca2e5903f)))
                    (fp.add roundNearestTiesToEven
                            a!65
                            ((_ to_fp 11 53) #x3f9be62aca809cb5)))))
(let ((a!67 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3cb0000000000000)
                                    a!66)
                            ((_ to_fp 11 53) #x3c814b37f4b51f71))
                    ((_ to_fp 11 53) #x7ff8000000000001))))
(let ((a!68 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3cc0000000000000)
                                    a!36)
                            ((_ to_fp 11 53) #x7ff8000000000001))
                    a!67)))
  (FPCHECK_FADD_OVERFLOW
    a!68
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cc0000000000000)
            (fp.abs a!69)))))))))))))))))))))))))))))))))))))))))))

(check-sat)
(exit)
